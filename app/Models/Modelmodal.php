<?php namespace App\Models;
use CodeIgniter\Model;
 
class Modelmodal extends Model
{
    protected $table = 'modal';
     
    public function getModal()
    {
        return $this->findAll();  
    }
    public function SimpanModal($data)
    {
        $query = $this->db->table($this->table)->insert($data);
        return $query;
    }
    public function PilihModal($id)
    {
         $query = $this->getWhere(['id_modal' => $id]);
         return $query;
    }
    public function edit_data($id,$data)
    {
        $query = $this->db->table($this->table)->update($data, array('id_modal' => $id));
        return $query;
    }
    public function HapusModal($id)
    {
        $query = $this->db->table($this->table)->delete(array('id_modal' => $id));
        return $query;
    }
 }