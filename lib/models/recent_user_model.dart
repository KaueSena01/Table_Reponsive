class RecentUser {
  final String? nameInter, namePatient, officeHours, status, screeningNumber;

  RecentUser(
      {this.nameInter, this.namePatient, this.officeHours, this.status, this.screeningNumber});
}

List recentUsers = [
  RecentUser(
    nameInter: "Nome do estagiário 1 Teste Teste",
    namePatient: "Nome do paciente 1 Teste Teste",
    officeHours: "13:00",
    status: "Agendado",
    screeningNumber: "1"
  ),
  RecentUser(
    nameInter: "Nome do estagiário 2 Teste Teste",
    namePatient: "Nome do paciente 2 Teste Teste",
    officeHours: "13:00",
    status: "Agendado",
    screeningNumber: "1"
  ),
  RecentUser(
    nameInter: "Nome do estagiário 3 Teste Teste",
    namePatient: "Nome do paciente 3 Teste Teste",
    officeHours: "13:00",
    status: "Agendado",
    screeningNumber: "1"
  ),
];
