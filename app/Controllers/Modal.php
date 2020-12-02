<?php namespace App\Controllers;
 
use CodeIgniter\Controller;
use App\Models\Modelmodal;
 
class Modal extends BaseController
{
    public function index()
    {
        $model = new Modelmodal();
        if (!$this->validate([]))
        {
            $data['validation'] = $this->validator;
            $data['modal'] = $model->getModal();
            return view('v_modallist',$data);
            
        }
    }

    public function form(){
        helper('form');
        return view('v_modalform');
    }

    public function simpan(){
        $model = new Modelmodal();
        if ($this->request->getMethod() !== 'post') {
            return redirect()->to('modal');
        }
        $validation = $this->validate([
            'file_upload' => 'uploaded[file_upload]|mime_in[file_upload,image/jpg,image/jpeg,image/gif,image/png]|max_size[file_upload,4096]'
        ]);
        if ($this->request->getMethod() !== 'post') {
            return redirect()->to('modal');
        }
        $validation = $this->validate([
            'image_upload' => 'uploaded[file_upload]|mime_in[file_upload,image/jpg,image/jpeg,image/gif,image/png]|max_size[file_upload,4096]'
        ]);
        if ($validation == FALSE) {
        $data = array(
            'judul_modal'  => $this->request->getPost('judul_modal'),
            'judul_kategori'  => $this->request->getPost('judul_kategori'),
            'deskripsi'  => $this->request->getPost('deskripsi'),
            'nama_apk'  => $this->request->getPost('nama_apk'),
            'link_modal'  => $this->request->getPost('link_modal'),
        );
        } else {
            $upload = $this->request->getFile('file_upload');
            $upload->move(WRITEPATH . '../public/assets/img/modal/');
        $data = array(
            'judul_modal'  => $this->request->getPost('judul_modal'),
            'judul_kategori'  => $this->request->getPost('judul_kategori'),
            'deskripsi'  => $this->request->getPost('deskripsi'),
            'nama_apk'  => $this->request->getPost('nama_apk'),
            'link_modal'  => $this->request->getPost('link_modal'),
            'gambar_modal' => $upload->getName(),
        );
        }
        $model->SimpanModal($data);
        return redirect()->to('./modal')->with('berhasil', 'Data Berhasil di Simpan');
    }

    public function form_edit($id){
        $model = new Modelmodal();
        helper('form');
        $data['modal'] = $model->PilihModal($id)->getRow();
        return view('v_modaledit',$data);
    }

    public function edit(){
        $model = new Modelmodal();
        if ($this->request->getMethod() !== 'post') {
            return redirect()->to('modal');
        }
        $id = $this->request->getPost('id_modal');
        $validation = $this->validate([
            'file_upload' => 'uploaded[file_upload]|mime_in[file_upload,image/jpg,image/jpeg,image/gif,image/png]|max_size[file_upload,4096]'
        ]);
 
        if ($validation == FALSE) {
        $data = array(
            'judul_modal'  => $this->request->getPost('judul_modal'),
            'judul_kategori'  => $this->request->getPost('judul_kategori'),
            'deskripsi'  => $this->request->getPost('deskripsi'),
            'nama_apk'  => $this->request->getPost('nama_apk'),
            'link_modal'  => $this->request->getPost('link_modal'),
           
        );
        } else {
        $dt = $model->PilihModal($id)->getRow();
        $gambar_modal = $dt->gambar_modal;
        $path = '../public/assets/img/modal/';
        @unlink($path.$gambar);
            $upload = $this->request->getFile('file_upload');
            $upload->move(WRITEPATH . '../public/assets/img/modal/');
        $data = array(
            'judul_modal'  => $this->request->getPost('judul_modal'),
            'judul_kategori'  => $this->request->getPost('judul_kategori'),
            'deskripsi'  => $this->request->getPost('deskripsi'),
            'nama_apk'  => $this->request->getPost('nama_apk'),
            'link_modal'  => $this->request->getPost('link_modal'),
            'gambar_modal' => $upload->getName(),
            
        );
        }
        
        $model->edit_data($id,$data);
        return redirect()->to('./modal')->with('berhasil', 'Data Berhasil di Ubah');
        
    }

    public function hapus($id){
        $model = new Modelmodal();
        $dt = $model->PilihModal($id)->getRow();
        $model->HapusModal($id);
        $gambar_modal = $dt->gambar_modal;
        $path = '../public/assets/img/modal/';
        @unlink($path.$gambar_modal);
        return redirect()->to('./modal')->with('berhasil', 'Data Berhasil di Hapus');
    }

}
