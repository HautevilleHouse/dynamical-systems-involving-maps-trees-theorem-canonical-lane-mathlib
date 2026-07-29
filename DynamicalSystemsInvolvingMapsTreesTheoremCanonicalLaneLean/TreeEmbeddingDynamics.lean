import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeEmbedding where
  treeType : Type u
  boundaryType : Type v
  embeddingMap : treeType → boundaryType
  compatibility : Prop

def TreeEmbeddingClosed (T : TreeEmbedding) : Prop :=
  T.compatibility

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse