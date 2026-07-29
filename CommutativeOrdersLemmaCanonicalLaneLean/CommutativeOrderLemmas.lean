import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeOrdersLemmaCanonicalLaneLean.TotalOrderLemmas

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure CommutativeOrderPackage (A : Type) where
  totalOrder : TotalOrderPackage A
  commutativity : ∀ a b, totalOrder.le a b → totalOrder.le b a → a = b
  commFromAntisymm : ∀ a b, totalOrder.partialOrder.antisymm a b

structure CommutativeOrderEvidence {A : Type} (C : CommutativeOrderPackage A) where
  totalOrderEvidence : TotalOrderEvidence C.totalOrder
  commutativityClosed : ∀ a b, C.totalOrder.le a b → C.totalOrder.le b a → a = b
  commFromAntisymmClosed : ∀ a b, C.totalOrder.partialOrder.antisymm a b

def CommutativeOrderClosed {A : Type} (C : CommutativeOrderPackage A) : Prop :=
  TotalOrderClosed C.totalOrder ∧ (∀ a b, C.totalOrder.le a b → C.totalOrder.le b a → a = b) ∧ (∀ a b, C.totalOrder.partialOrder.antisymm a b)

theorem commutative_order_closed_from_evidence {A : Type} (C : CommutativeOrderPackage A) (E : CommutativeOrderEvidence C) : CommutativeOrderClosed C := by
  exact And.intro (total_order_closed_from_evidence C.totalOrder E.totalOrderEvidence) (And.intro E.commutativityClosed E.commFromAntisymmClosed)

end HautevilleHouse
end CommutativeOrdersLemmaCanonicalLaneLean