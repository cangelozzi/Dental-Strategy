<?php

namespace App\Http\Controllers;

use Faker\Generator as Faker;
use Illuminate\Http\Request;
use App;

class TrackController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tracks = App\Track::all();
        return response([
            "message" => "Sucessfully retrieved tracks",
            "tracks" => $tracks
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $track = App\Track::create([
            "title" => $request->input("title"),
            "description" => $request->input("description")
        ]);
        return response([
            "message" => "Successfully created track $track->title",
            "track" => $track
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $track = App\Track::find($id);
        return response([
            "message" => "Successfully retrieved track: $track->title",
            "track" => $track
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $track = App\Track::find($id);
        $title = $request->input("title");
        $description = $request->input("description");

        $track->title = $title ? $title : $track->title;
        $track->description = $description ? $description : $track->description;
        $track->save();

        return response([
            "message" => "Successfully updated track: $track->title",
            "track" => $track
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $track = App\Track::find($id);
        $track->delete();

        return response([
            "message" => "Successfully deleted track $track->id"
        ]);
    }
}
