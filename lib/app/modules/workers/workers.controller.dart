import 'package:get/get.dart';
import 'package:mobile/app/data/models/workers.model.dart';

class WorkersController extends GetxController {
  Future<List<WorkerVO>> findAllWorkers() async {
    List<WorkerVO> response = [];

    response.add(WorkerVO(
        name: "Djonatan Willenz",
        cpf: '101.541.149-52',
        dateAdmission: '23/08/1998'));
    response.add(WorkerVO(
        name: "Djonatan Willenz",
        cpf: '101.541.149-52',
        dateAdmission: '23/08/1998'));
    response.add(WorkerVO(
        name: "Djonatan Willenz",
        cpf: '101.541.149-52',
        dateAdmission: '23/08/1998'));
    response.add(WorkerVO(
        name: "Djonatan Willenz",
        cpf: '101.541.149-52',
        dateAdmission: '23/08/1998'));
    response.add(WorkerVO(
        name: "Djonatan Willenz",
        cpf: '101.541.149-52',
        dateAdmission: '23/08/1998'));
    return response;
  }
}
