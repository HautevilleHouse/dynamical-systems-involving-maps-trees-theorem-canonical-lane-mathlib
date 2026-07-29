import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

def treeBridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem tree_bridge_from_admissible_class (A : AdmissibleClass) (h : A.endpointSatisfied) : treeBridgeClosed A := h

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse