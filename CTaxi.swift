import Foundation
import CoreLocation
class CTaxi{
    var idTaxi: String
    var matricula :String
    var codTaxi :String
    var marcaVehiculo :String
    var colorVehiculo :String
    var taximarker: CLLocationCoordinate2D
    var idConductor :String
    var nombreApellido :String
    var movil :String
    var urlFoto :String
    init(){
        self.idTaxi = ""
        self.matricula = ""
        self.codTaxi = ""
        self.marcaVehiculo = ""
        self.colorVehiculo = ""
        taximarker = CLLocationCoordinate2D()
        self.idConductor = ""
        self.nombreApellido = ""
        self.movil = ""
        self.urlFoto = ""
    }
    init(IdTaxi: String, Matricula :String, CodTaxi :String, MarcaVehiculo :String,ColorVehiculo :String,lat: String, long: String, Conductor : CConductor){
        self.idTaxi = IdTaxi
        self.matricula = Matricula
        self.codTaxi = CodTaxi
        self.marcaVehiculo = MarcaVehiculo
        self.colorVehiculo = ColorVehiculo
        self.taximarker = CLLocationCoordinate2D(latitude: Double(lat)!, longitude: Double(long)!)
        self.idConductor = Conductor.idConductor
        self.nombreApellido = Conductor.nombreApellido
        self.movil = Conductor.movil
        self.urlFoto = Conductor.urlFoto
    }
}
