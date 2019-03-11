<?php

namespace Tests\Unit;
use App;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Validation\Factory;

class CompanyControllerTest extends TestCase
{
    /**
     * Check if a Company can be created
     * @test
     */
    public function a_company_can_be_created() {
        $response = $this->call('POST', 'api/companies', [
            "name" => "Test Company",
            "logo" => "NOTREALIMG.jpg"
        ]);

        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * Companies can be fetched
     * @test
     */
    public function companies_can_be_fetched() {
        $response = $this->call('GET', 'api/companies');
        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * A company can be fetched
     * @test
     */
    public function a_company_can_be_fetched (){
        $response = $this->call('GET', 'api/companies/1');
        $this->assertEquals(200, $response->getStatusCode());
    }

    /**
     * A company can be deleted
     * @test
     */
    public function a_company_can_be_deleted ()
    {
        $company = (factory(App\Company::class, 1)->create())[0];
        $response = $this->call('DELETE', "api/companies/$company->id");
        $this->assertEquals(200, $response->getStatusCode());
    }
}
