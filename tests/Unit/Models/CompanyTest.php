<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use App;

class CompanyTest extends TestCase
{
    /** @test */
    function it_has_employees() {
        $employees = App\Company::find(1)
                        ->employees()
                        ->get();
        $this->assertTrue(get_class($employees[0]) == App\Employee::class);
    }

    /** @test 
     * Quick check that the migration to add name column worked
    */
    function it_has_a_name() {
        $company = App\Company::find(1);
        $this->assertTrue($company->name != '');
    }
}
