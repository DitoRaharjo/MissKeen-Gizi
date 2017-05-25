<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use DB;

use App\Gizi;
use App\Ingredient;

class GiziController extends Controller
{
  public function getAll() {
    $responses = Gizi::with('ingredient')->get();
    return response()->json($responses);
  }

  public function getOne($id) {
    $responses = Gizi::where('id', '=', $id)->get();
    return response()->json($responses);
  }
}
