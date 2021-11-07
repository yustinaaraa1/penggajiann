<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?php echo $title; ?></h1>
    </div>

    <div class="card" style="width: 65%">
    	<div class="card-body">
            <?php foreach ($potongan as $p): ?>
    		<form method="POST" action="<?php echo base_url('admin/potonganGaji/updateDataAksi'); ?>">
    			<div class="form-grup">
    				<label>Jenis Potongan </label>
                    <input type="text" name="id" value="<?php echo $p->id;?>">
    				<input type="text" name="potongan" class="form-control" value="<?php echo $p->potongan; ?>">
    				<?php echo form_error('potongan'); ?>
    			</div>
    			<div class="form-grup">
    				<label>Jumlah Potongan </label>
    				<input type="number" name="jml_potongan" class="form-control" value="<?php echo $p->jml_potongan; ?>">
    				<?php echo form_error('jml_potongan'); ?>
    			</div>
    			
    			<button  type="submit" class="btn btn-primary mt-3 ">Simpan</button>
    			
    		</form>
        <?php endforeach; ?>
    		
    	</div>	
    </div>

</div>