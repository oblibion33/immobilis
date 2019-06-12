
CREATE TABLE arriendo (
    id_arriendo            int(11),
    vencimiento            VARCHAR(20),
    contrato_id_contrato   int(11),
    recordatorio_pagos     tinyint(1),
    valor_arriendo         int(7)
);

ALTER TABLE arriendo ADD CONSTRAINT arriendo_pk PRIMARY KEY ( id_arriendo );
ALTER TABLE `arriendo`
  MODIFY `id_arriendo` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE bodega (
    direccion_propiedad   VARCHAR(50) NOT NULL,
        id_propiedad          int(11),
    num_identificador     int(5) NOT NULL,
    metros2               DOUBLE NOT NULL
);

ALTER TABLE bodega ADD CONSTRAINT bodega_pk PRIMARY KEY ( direccion_propiedad );

CREATE TABLE casa (
    direccion_propiedad      VARCHAR(50) NOT NULL,
        id_propiedad          int(11),
    num_dormitorios          int(2) NOT NULL,
    num_banios               int(2) NOT NULL,
    metros2_habitables       DOUBLE NOT NULL,
    metros2_patio            DOUBLE NOT NULL,
    conjunto_perteneciente   VARCHAR(50)
);

ALTER TABLE casa ADD CONSTRAINT casa_pk PRIMARY KEY ( id_propiedad );

CREATE TABLE cliente (
    id_cliente   int(11),
    rut          varchar(12) NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;


CREATE TABLE contrato (
    id_contrato                     int(11) NOT NULL,
    tipo_de_contrato                VARCHAR(20),
    ejecutivo_id_ejecutivo          int(11) NOT NULL,
    propiedad_id_propiedad   int(11) not null,
    en_convenio                     tinyint(1),
    cliente_id_cliente              int(11)
);


ALTER TABLE contrato ADD CONSTRAINT contrato_pk PRIMARY KEY ( id_contrato );
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE corretaje (
    id_corretaje           int(11) NOT NULL,
    contrato_id_contrato   int(11),
    comision               DOUBLE
);


ALTER TABLE corretaje ADD CONSTRAINT corretaje_pk PRIMARY KEY ( id_corretaje );
ALTER TABLE `corretaje`
  MODIFY `id_corretaje` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE departamento (
    direccion_propiedad   VARCHAR(50) NOT NULL,
        id_propiedad          int(11),
    num_identificador     int(4) NOT NULL,
    edificio              VARCHAR(50) NOT NULL,
    num_dormitorios       int(2) NOT NULL,
    num_banios            int(2) NOT NULL
);

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY (  id_propiedad );

CREATE TABLE documento (
    id_documento           int(11) NOT NULL,
    tipo_documento         VARCHAR(20) NOT NULL,
    direccion_url          VARCHAR(50) NOT NULL,
    contrato_id_contrato   int(11) NOT NULL
);

ALTER TABLE documento ADD CONSTRAINT documento_pk PRIMARY KEY ( id_documento );
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE ejecutivo (
    id_ejecutivo   int(11) NOT NULL,
    rut            varchar(12) NOT NULL
);

ALTER TABLE ejecutivo ADD CONSTRAINT ejecutivo_pk PRIMARY KEY ( id_ejecutivo );
ALTER TABLE `ejecutivo`
  MODIFY `id_ejecutivo` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE estacionamiento (
    direccion_propiedad   VARCHAR(50) NOT NULL,
        id_propiedad          int(11),
    num_identificador     int(3) NOT NULL,
    nivel_ubicacion       int(2)
);

ALTER TABLE estacionamiento ADD CONSTRAINT estacionamiento_pk PRIMARY KEY ( id_propiedad );

CREATE TABLE oficina (
    direccion_propiedad   VARCHAR(50) NOT NULL,
        id_propiedad          int(11),
    num_identificador     int(3) NOT NULL,
    metros2_disponibles   DOUBLE NOT NULL,
    patente_comercial     tinyint(1) NOT NULL
);

ALTER TABLE oficina ADD CONSTRAINT oficina_pk PRIMARY KEY ( id_propiedad );

CREATE TABLE pago_efectuado (
    id_pago             int(11) NOT NULL,
    fecha               DATETIME,
    registro_pagos_id   int(11),
    monto               int(7)
);

ALTER TABLE pago_efectuado ADD CONSTRAINT pago_efectuado_pk PRIMARY KEY ( id_pago );
ALTER TABLE `pago_efectuado`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT;


CREATE TABLE propiedad (
    id_propiedad          int(11),
    comuna                VARCHAR(20) NOT NULL,
    disponible            tinyint(1) NOT NULL,
    reservada             tinyint(1) NOT NULL,
    tipo_propietario      VARCHAR(20) NOT NULL
);

ALTER TABLE propiedad ADD CONSTRAINT propiedad_pk PRIMARY KEY ( id_propiedad );
ALTER TABLE `propiedad`
  MODIFY `id_propiedad` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE registro_pagos (
    id_registro_pagos      int(11) NOT NULL,
    tipos_intervalos       VARCHAR(20),
    contrato_id_contrato   int(11)
);


ALTER TABLE registro_pagos ADD CONSTRAINT registro_pagos_pk PRIMARY KEY ( id_registro_pagos );
ALTER TABLE `registro_pagos`
  MODIFY `id_registro_pagos` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE seguro (
    id_seguro              int(11),
    nombre_seguro          VARCHAR(20),
    costo                  int,
    contrato_id_contrato   int(11)
);
ALTER TABLE seguro ADD CONSTRAINT registro_pagos_pk PRIMARY KEY ( id_seguro );
ALTER TABLE `seguro`
  MODIFY `id_seguro` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE usuario (
    id_usuario   int(11),
    rut          varchar(12) NOT NULL,
    password     VARCHAR(20) NOT NULL,
    telefono        VARCHAR(20) NOT NULL,
    mail         VARCHAR(20)
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE venta (
    id_venta               int(11) NOT NULL,
    tasacion               DOUBLE NOT NULL,
    banco_financiador      VARCHAR(20),
    contrato_id_contrato   int(11)
);


ALTER TABLE venta ADD CONSTRAINT venta_pk PRIMARY KEY ( id_venta );
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT;
