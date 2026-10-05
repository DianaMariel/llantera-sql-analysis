# Llantera SQL & Data Analysis

Proyecto de modernización, estructuración y análisis de datos de ventas y servicios mecánicos para un negocio de llantera.

## Descripción del Proyecto

Anteriormente, el registro de operaciones del negocio se llevaba en un formato de **Excel antiguo**, lo que dificultaba consultas ágiles, control de inventario y generación de reportes consistentes.

Este repositorio documenta el proceso de transición hacia una arquitectura moderna:
- **Normalización de datos:** Migración desde hojas de cálculo heredadas hacia una base de datos relacional (**SQLite**).
- **Consultas y métricas clave:** Análisis de ventas, frecuencia de servicios automotrices y marcas más solicitadas mediante **SQL**.
- **Fase visual y operativa:** Preparación de la base de datos para integrarla a un dashboard interactivo en **React**, orientado a la toma de decisiones estratégicas (gestión de stock, servicios más rentables y estacionalidad).

---

##Tecnologías

- **Base de Datos:** SQLite / SQL
- **Control de Versiones:** Git & GitHub
- **Frontend / Análisis visual (En desarrollo):** React

---

##Estructura de la Base de Datos

Tabla principal: `ventas`
- **nota:** Folio consecutivo único por orden/servicio.
- **fac:** Folio fiscal de factura (si aplica).
- **fecha / nombre / marca / modelo:** Datos del cliente y del vehículo atendido.
- **concepto:** Medida y marca en venta de llantas, o tipo de servicio correctivo/preventivo.
- **cant_llantas / importe_llantas:** Número de neumáticos vendidos y subtotal correspondiente.
- **Servicios:** Desglose contable por concepto (`refacciones`, `alineacion`, `balanceos`, `suspension`, `balatas`, `discos`, `talachas`, etc.).
- **total:** Monto total cobrado por nota de venta.

---

##Hoja de Ruta (Roadmap)

- [x] Migración y estructuración de datos de Excel a SQLite.
- [ ] Creación de scripts SQL para métricas mensuales y de rentabilidad.
- [ ] Desarrollo de interfaz web en React con gráficas para la toma de decisiones.
