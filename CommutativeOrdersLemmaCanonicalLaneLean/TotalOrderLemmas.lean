import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure TotalOrderPackage (A : Type) where
  le : A → A → Prop
  partialOrder : PartialOrderPackage A
  totality : ∀ a b, le a b ∨ le b a

structure TotalOrderEvidence {A : Type} (T : TotalOrderPackage A) where
  partialOrderEvidence : PartialOrderEvidence T.partialOrder
  totalityClosed : ∀ a b, T.le a b ∨ T.le b a

def TotalOrderClosed {A : Type} (T : TotalOrderPackage A) : Prop :=
  PartialOrderClosed T.partialOrder ∧ (∀ a b, T.le a b ∨ T.le b a)

theorem total_order_closed_from_evidence {A : Type} (T : TotalOrderPackage A) (E : TotalOrderEvidence T) : TotalOrderClosed T := by
  exact And.intro (partial_order_closed_from_evidence T.partialOrder E.partialOrderEvidence) E.totalityClosed

end HautevilleHouse
end CommutativeOrdersLemmaCanonicalLaneLean