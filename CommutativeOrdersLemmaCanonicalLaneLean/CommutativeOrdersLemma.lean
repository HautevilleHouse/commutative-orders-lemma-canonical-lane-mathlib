import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure CommutativeOrdersLemmaPackage where
  partialOrder : Type u
  carrier : Set partialOrder
  commutativeOperation : partialOrder → partialOrder → partialOrder
  commutativity : ∀ a b : partialOrder, commutativeOperation a b = commutativeOperation b a
  orderPreserving : ∀ a b c : partialOrder, a ≤ b → commutativeOperation a c ≤ commutativeOperation b c
  composition : Prop

structure CommutativeOrdersLemmaEvidence (C : CommutativeOrdersLemmaPackage) where
  commutativityClosed : C.commutativity
  orderPreservingClosed : C.orderPreserving
  compositionClosed : C.composition

def CommutativeOrdersLemmaClosed (C : CommutativeOrdersLemmaPackage) : Prop :=
  C.commutativity ∧ C.orderPreserving ∧ C.composition

theorem commutative_orders_lemma_closed_from_evidence (C : CommutativeOrdersLemmaPackage) (E : CommutativeOrdersLemmaEvidence C) : CommutativeOrdersLemmaClosed C :=
  And.intro E.commutativityClosed (And.intro E.orderPreservingClosed E.compositionClosed)

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
