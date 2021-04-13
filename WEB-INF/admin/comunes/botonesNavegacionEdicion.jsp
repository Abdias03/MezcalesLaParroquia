<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/Administrador?accion=paginaEditar" class="btn btn-ligth btn-block">
                    <i class="fas fa-arrow-left"></i> Regresar
                </a>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i> Guardar Datos
                </button>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/Administrador?accion=eliminarProducto&id=${producto.getId()}"
                   class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i> Eliminar Datos
                </a>
            </div>
        </div>
    </div>
</section>