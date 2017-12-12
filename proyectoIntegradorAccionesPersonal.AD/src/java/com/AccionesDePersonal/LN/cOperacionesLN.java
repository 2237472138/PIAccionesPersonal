/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.AccionesDePersonal.LN;

import java.util.logging.Logger;
import com.ConexionBaseDatos.cAccesoDatos;
import com.ConexionBaseDatos.cConexion;
import com.AccionesDePersonal.AD.cConsultasAD;

/**
 *
 * @author alexa
 */
public class cOperacionesLN {

    private String strSQL, strSQL1;

    public String save(String resolucion, String cedula, String nombre, String apellido) {
        Integer result = -1, result1 = -1;
        String mensaje = "No se guardo en la base de datos";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLInsertAccionPersonal(resolucion, cedula);
            strSQL1 = oConsultasAD.strSQLInsertTrabajador(cedula, apellido, nombre);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);     //si nos da error cambiar el nombre de la variable
                result1 = ad.EjecutarUpdate(strSQL1);
                mensaje = "Datos Guardados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getResolucionAp(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectResolucionAp(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getApellido(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectApellido(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente ";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getNombre(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectNombre(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getFechaCreada(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectFechaCreada(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getFechaRige(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectFechaRige(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getExplicacionAp(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectExplicacionAp(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getNumeroTipo(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectNumeroTipo(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getObservacionesAp(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectObservacionesAp(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getRectorAp(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectRectorAp(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getDirectorThAp(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectDirectorThAp(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getNumeroIessTrabajador(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectIessTrabajador(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getDependenciaSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectDependeciaSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getPuestoSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectPuestoSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getLugarSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectLugarSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getEstadoSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectEstadoSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getPartIndSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectPartIndSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getPartPresuSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectPresuSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }

    public String getRemuMenSituacion(String cedula) {
        Integer result = -1;
        String mensaje = "No se pudo consultar su dato";
        cAccesoDatos ad = new cAccesoDatos();
        try {
            cConsultasAD oConsultasAD = new cConsultasAD();
            strSQL = oConsultasAD.strSQLSelectRemuMenSituacion(cedula);
            int aux = ad.Connectar();
            if (aux == 2) {
                ad.BeginTran();
                ad.CommitTran();
                result = ad.EjecutarUpdate(strSQL);
                mensaje = "Datos Consultados Correctamente";
                ad.Desconectar();
            }
        } catch (Exception e) {
            Logger log = Logger.getLogger(this.getClass().getName());
            log.severe(e.getMessage());
            ad.RollbackTran();

        } finally {
            return mensaje;
        }
    }
}
