import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

private def bridgeClosed (A : TreeAdmissibleClass) : Prop :=
  TreeWitnessClosed A.object

private theorem bridge_from_admissible_class (A : TreeAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

private def gateClosed (A : TreeAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

private theorem gate_from_admissible_class (A : TreeAdmissibleClass) : gateClosed A :=
  A.gateWitness

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse