<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use App;

class TagTest extends TestCase
{
    /** @test */
    function it_has_modules () 
    {
        $module = (App\Tag::find(1)->modules()->get())[0];
        
        $this->assertTrue(get_class($module) == App\Module::class);
    }
}
