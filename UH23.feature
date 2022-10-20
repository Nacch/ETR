Feature: Lectura de Reviews de Instituciones Educativas
Scenario: Busqueda exitosa de instituciones educativas
    Dado que el padre de familia se encuentra en la pantalla de Busqueda de Instituciones Educativas
        Y el padre de familia rellena el campo <Nombre de la IE>
        Y el padre de familia selecciona opcionalmente los filtros de busqueda adicionales <Filtro 1>, <Filtro 2>, <Filtro 3>
    Cuando el padre de familia da click en el botón Buscar
        Y el sistema encuentre instituciones educativas que coincidan con los parametros de busqueda solicitados
    Entonces el sistema mostrará las instutuciones que halla encontrado
        Y el sistema mostrará tres reviews por cada institucion educativa que muestre
    Examples:
        | Nombre de la IE | filtro 1 | filtro 2 | filtro . |
        | Preparatoria Nacional de Hiomía | - | - | - |
        | Jesualdo | Privado | - | - |
        | Trilce | Privado | A menos de 5 KM | Con actividades extracurriculares |

Scenario: Busqueda fallida de instituciones educativas
    Dado que el padre de familia se encuentra en la pantalla de Busqueda de Instituciones Educativas
        Y el padre de familia rellena el campo <Nombre de la IE>
        Y el padre de familia selecciona opcionalmente los filtros de busqueda adicionales <Filtro 1>, <Filtro 2>, <Filtro 3>
    Cuando el padre de familia da click en el botón Buscar
        Y el sistema no encuentre instituciones educativas que coincidan con los parametros de busqueda solicitados
    Entonces el sistema mostrará el mensaje No se encontraron instituciones educativas que cumplan con los criterios solicitados
    Examples:
        | Nombre de la IE | filtro 1 | filtro 2 | filtro . |
        | Preparatoria Nacional de Hiomía | Privado | A menos de 1 KM | - |
        | Jesualdo | Publico | A menos de 3 KM | - |
        | Colegio Noexisteenlarealidad | - | - | - |