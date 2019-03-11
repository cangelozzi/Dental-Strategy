<?php

namespace Tests\Unit;

use Tests\TestCase;
use App;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class EmployeeControllerTest extends TestCase
{
    /** @test */
    public function an_employee_can_be_fetched() 
    {
        $employee = (factory(App\Employee::class, 1)->create())[0];
        $response = $this->call('GET', "api/employees/$employee->id");
        $this->assertEquals(200, $response->getStatusCode());
    }

    /** @test */
    public function an_employee_can_be_deleted() 
    {
        $employee = (factory(App\Employee::class, 1)->create())[0];
        $response = $this->call('DELETE', "api/employees/$employee->id");
        $this->assertEquals(200, $response->getStatusCode());   
    }

    // /** @test */
    // public function an_employee_can_be_created_and_has_a_company() 
    // {
    //     $employee = (factory(App\Employee::class, 1)->make())[0];
    //     $this->json('POST', "api/employees", [
    //         "first_name" => $employee->first_name,
    //         "last_name" => $employee->last_name,
    //         "company_id" => $employee->company_id,
    //         "email" => $employee->email,
    //         "password" => $employee->password,
    //         "position_id" => $employee->position_id,
    //         "date_hired" => "1994-06-02" ])
    //         ->assertStatus(200)
    //         ->assertExists([
    //             "company_id" => $employee->company_id
    //         ]);

    // }
}
