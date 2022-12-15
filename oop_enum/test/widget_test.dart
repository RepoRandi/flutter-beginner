enum MOTOR { nmax, pcx, vario, pagio, vespa }

void main() {
  var motorKita = MOTOR.nmax;

  if (motorKita == MOTOR.nmax) {
    print('Motor nmax');
  } else if (motorKita == MOTOR.pcx) {
    print('Motor pcx');
  } else if (motorKita == MOTOR.vario) {
    print('Motor vario');
  } else if (motorKita == MOTOR.pagio) {
    print('Motor pagio');
  } else if (motorKita == MOTOR.vespa) {
    print('Motor vespa');
  }
}
