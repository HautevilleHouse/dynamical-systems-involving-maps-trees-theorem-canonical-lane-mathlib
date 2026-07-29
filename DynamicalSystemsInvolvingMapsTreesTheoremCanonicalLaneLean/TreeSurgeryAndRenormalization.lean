import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean

structure TreeSurgeryAndRenormalization where
  surgeryRegions : Type u
  renormalization : Type v
  surgeryAdmissible : Prop
  renormalizationCocycle : Prop
  precompactness : Prop
  renormalizationConverges : Prop

structure TreeSurgeryAndRenormalizationEvidence (R : TreeSurgeryAndRenormalization) where
  surgeryAdmissibleClosed : R.surgeryAdmissible
  renormalizationCocycleClosed : R.renormalizationCocycle
  precompactnessClosed : R.precompactness
  renormalizationConvergesClosed : R.renormalizationConverges

def TreeSurgeryAndRenormalizationClosed (R : TreeSurgeryAndRenormalization) : Prop :=
  R.surgeryAdmissible ∧ R.renormalizationCocycle ∧ R.precompactness ∧ R.renormalizationConverges

theorem tree_surgery_and_renormalization_closed_from_evidence
    (R : TreeSurgeryAndRenormalization) (E : TreeSurgeryAndRenormalizationEvidence R) :
    TreeSurgeryAndRenormalizationClosed R := by
  exact And.intro E.surgeryAdmissibleClosed
    (And.intro E.renormalizationCocycleClosed
      (And.intro E.precompactnessClosed E.renormalizationConvergesClosed))

end DynamicalSystemsInvolvingMapsTreesTheoremCanonicalLaneLean
end HautevilleHouse