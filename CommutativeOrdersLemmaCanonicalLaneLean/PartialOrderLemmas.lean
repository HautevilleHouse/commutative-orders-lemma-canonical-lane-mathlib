import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure PartialOrderPackage (A : Type) where
  le : A → A → Prop
  refl : ∀ a, le a a
  antisymm : ∀ a b, le a b → le b a → a = b
  trans : ∀ a b c, le a b → le b c → le a c

structure PartialOrderEvidence {A : Type} (P : PartialOrderPackage A) where
  reflClosed : ∀ a, P.le a a
  antisymmClosed : ∀ a b, P.le a b → P.le b a → a = b
  transClosed : ∀ a b c, P.le a b → P.le b c → P.le a c

def PartialOrderClosed {A : Type} (P : PartialOrderPackage A) : Prop :=
  (∀ a, P.le a a) ∧ (∀ a b, P.le a b → P.le b a → a = b) ∧ (∀ a b c, P.le a b → P.le b c → P.le a c)

theorem partial_order_closed_from_evidence {A : Type} (P : PartialOrderPackage A) (E : PartialOrderEvidence P) : PartialOrderClosed P := by
  exact And.intro E.reflClosed (And.intro E.antisymmClosed E.transClosed)

end HautevilleHouse
end CommutativeOrdersLemmaCanonicalLaneLean