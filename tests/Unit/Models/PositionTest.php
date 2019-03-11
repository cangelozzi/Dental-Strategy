<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use App;

class PositionTest extends TestCase
{
    /** @test */
    function it_has_employees() 
    {
        $employees = App\Position::find(1)
                        ->employees()
                        ->get();
        $this->assertTrue(get_class($employees[0]) == App\Employee::class);
    }

    /** @test */
    function it_has_tracks() 
    {
        $tracks = App\Position::find(1)
                    ->tracks()
                    ->get();
        $this->assertTrue(get_class($tracks[0]) == App\Track::class);
    }

}
