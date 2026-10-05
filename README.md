# Llantera SQL & Data Analysis

Proyecto de modernización, estructuración y análisis de datos de ventas y servicios automotrices para un negocio de llantera.

## Descripción del Proyecto

Anteriormente, el registro de operaciones del negocio se llevaba en un formato de **Excel antiguo**, lo que dificultaba consultas ágiles, control de inventario y generación de reportes consistentes.

Este repositorio documenta el proceso de transición hacia una arquitectura relacional normalizada:
- **Normalización de datos:** Migración desde hojas de cálculo heredadas hacia una base de datos relacional (**SQLite**) separando clientes y transacciones mediante claves foráneas (`FOREIGN KEY`).
- **Consultas y métricas clave:** Análisis de ventas, frecuencia de servicios automotrices y comportamiento de clientes mediante **SQL**.
- **Fase visual y analítica:** Base de datos preparada para su integración con un dashboard interactivo en **React**, enfocado en la toma de decisiones estratégicas.

---

## Tecnologías

- **Base de Datos:** SQLite / SQL
- **Control de Versiones:** Git & GitHub
- **Frontend / Dashboard (En desarrollo):** React

---

## Estructura de la Base de Datos

El modelo relacional consta de dos tablas vinculadas:

### 1. Tabla `clientes`
- **`id`** (PK, AUTOINCREMENT): Identificador único del cliente.
- **`nota`** (UNIQUE): Folio consecutivo único asignado en la orden.
- **`nombre`**: Nombre del cliente.

### 2. Tabla `ventas`
- **`id`** (PK, AUTOINCREMENT): Identificador único de la transacción.
- **`cliente_id`** (FK -> `clientes.id`): Clave foránea que relaciona la venta con el cliente.
- **`fac`**: Folio fiscal de factura (si aplica).
- **`fecha`**: Fecha de emisión.
- **`marca` / `modelo`**: Vehículo atendido.
- **`concepto`**: Medida y marca de la llanta o descripción del servicio mecánico.
- **`cant_llantas` / `importe_llantas`**: Cantidad de neumáticos e importe total correspondiente.
- **Desglose de servicios:** Columnas específicas para `refacciones`, `sp`, `afinacion`, `rines`, `alineacion`, `balanceos`, `suspension`, `balatas`, `discos` y `talachas`.
- **`total`**: Monto total acumulado de la nota.

---

## Hoja de Ruta (Roadmap)

- [x] Migración y separación de datos en tablas relacionales (`clientes` y `ventas`).
- [x] Script SQL (`.sql`) para inicialización y carga de datos de prueba.
- [ ] Consultas analíticas SQL (ventas por periodo, servicios más solicitados, ticket promedio).
- [ ] Desarrollo de frontend en React con gráficos y tableros interactivos.