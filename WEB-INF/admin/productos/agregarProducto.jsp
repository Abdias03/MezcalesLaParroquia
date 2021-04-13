<div class="modal fade" id="agregarClienteModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar Informacion</h5> 
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            
            <form action="${pageContext.request.contextPath}/Administrador?accion=insertar"
                  method="POST" class="was-validated" enctype="multipart/form-data">
                
                <div class="modal-body">
                     <div class="form-group">
                        <label for="perfiladores">Nombre Del Producto</label>
                        <input type="text" class="form-control" name="nom_producto" required>
                    </div>
                    <div class="form-group">
                                <label>Imagen</label>
                                <input type="file" name="fileImagen">
                     </div>
                    <div class="form-group">
                        <label for="colaboracion">Descripcion</label>
                        <input type="text" class="form-control" name="descripcion" required>
                    </div>
                    <div class="form-group">
                        <label for="fecha_nacimiento">Precio</label>
                        <input type="text" class="form-control" name="precio" required>
                    </div>
                    <div class="form-group">
                        <label for="genero">Stock</label>
                        <input type="text" class="form-control" name="stock" required>
                    </div>
                     <div class="form-group">
                        <label for="media_filiacion">Categoria</label>
                        <input type="text" class="form-control" name="categoria" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>    
            </form>
        </div>
    </div>
</div>
    