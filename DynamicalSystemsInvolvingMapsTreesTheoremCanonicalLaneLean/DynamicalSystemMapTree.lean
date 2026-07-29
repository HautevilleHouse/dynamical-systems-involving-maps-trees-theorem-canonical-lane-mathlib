import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure IteratedMapSystem where
  stateSpace : Type u
  map : stateSpace → stateSpace
  invariantSet : Set stateSpace
  topologicalTransitivity : Prop
  denseOrbitExistence : Prop

def DynamicalSystemClosed (S : IteratedMapSystem) : Prop :=
  S.topologicalTransitivity ∧ S.denseOrbitExistence

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse