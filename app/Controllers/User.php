<?php 

namespace App\Controllers;

use App\Models\Modeluser;

class User extends BaseController
{
  protected $Modeluser;

  public function __Construct()

  {
    $this->Modeluser = new Modeluser();
  }


  public function index()
  {
    $Home = $this->Modeluser->findAll();

    $data = [
      'judul' => 'portal',
      'home' => $Home,
    ];

    echo view('portal', $data);
  }
}