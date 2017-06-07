#include <openbabel/mol.h>
#include <openbabel/obconversion.h>

int main() {
    OpenBabel::OBAtom atom;
    OpenBabel::OBMol molecule;
    OpenBabel::OBConversion conversion;
    conversion.SetOutFormat("xyz");

    atom.SetType("C");
    atom.SetVector(0.0, 0.0, 0.0);

    molecule.AddAtom(atom);
    return 0;
}