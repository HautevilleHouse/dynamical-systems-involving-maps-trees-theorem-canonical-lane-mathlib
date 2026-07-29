import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

def ConstrainedMapsTreesClosure (A : MapsTreesAdmissibleClass) : Prop :=
  bridgeClosedMapsTrees A ∧ gateClosedMapsTrees A

theorem constrained_maps_trees_endgame (A : MapsTreesAdmissibleClass) : ConstrainedMapsTreesClosure A := by
  exact And.intro (bridge_from_admissible_class_maps_trees A) (gate_from_admissible_class_maps_trees A)

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse