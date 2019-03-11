<?php

namespace Tests\Unit;

use App;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class TrackControllerTest extends TestCase
{
    /** @test */
    public function can_fetch_all_tracks()
    {
        $response = $this->get('/api/tracks');
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_fetch_a_track()
    {
        $track = factory(App\Track::class, 1)->create()[0];
        $response = $this->get("/api/tracks/$track->id");
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_create_a_track()
    {
        $track = (factory(App\Track::class, 1)->make())[0];
        $response = $this->call("POST", "api/tracks", [
            "title" => $track->title,
            "description" => $track->description
        ]);
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_update_a_track()
    {
        $track = factory(App\Track::class, 1)->create()[0];
        $response = $this->call("PUT", "api/tracks/$track->id");
        $this->assertEquals(200, $response->getStatusCode());
    }
}
