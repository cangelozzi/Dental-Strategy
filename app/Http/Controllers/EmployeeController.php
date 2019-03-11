<?php

namespace App\Http\Controllers;

use App;
use Illuminate\Http\Request;
use App\Employee;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = App\Employee::with('company')->get();
        return response($employees);
        
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
        $employee = App\Employee::create([
            "first_name"  => $request->input("first_name"),
            "last_name" => $request->input("last_name"),
            "email" => $request->input("email"),
            "password" => $request->input("password"),
            "position_id" => $request->input("position_id"), // TODO: bind this
            "date_hired" => $request->input("date_hired"),
            "company_id" => $request->input("company_id")
        ]);
        return response([
            "message" => "Sucesfully created employee: $employee->first_name",
            "employee" => $employee
        ], 200);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $employee = App\Employee::whereId($id)->with(['company', 'position'])->get()[0];
        return response([
            "message" => "Sucessfully retrieved employee {$employee["first_name"]} {$employee["last_name"]}",
            "employee" => $employee
        ], 200);

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
        $employee = App\Employee::find($id);
        
        $first_name =  $request->input("first_name");
        $last_name = $request->input("last_name");
        $email = $request->input("email");
        $date_hired = $request->input("date_hired");
        $password = $request->input("password");
        $position_id = $request->input("position_id");

        $employee->first_name = $first_name ? $first_name : $employee->first_name;
        $employee->last_name = $last_name ? $last_name : $employee->last_name;
        $employee->email = $email ? $email : $employee->email;
        $employee->date_hired = $date_hired ? $date_hired : $employee->date_hired;
        $employee->password = $password ? $password : $employee->password;
        $employee->position_id = $position_id ? $position_id : $employee->position_id;
        $employee->save();

        
        return response([
            "message" => "Sucessfully updated Employee $employee->first_name $employee->last_name",
            "employee" => $employee
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
        $employee = App\Employee::find($id);
        $employee->delete();
        return response([
            "message" => "Deleted employee with id $id"
        ], 200);
    }
}
