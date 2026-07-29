import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

def MapsTreesTheoremClosure (A : TreeAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem maps_trees_theorem_endgame (A : TreeAdmissibleClass) :
    MapsTreesTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse