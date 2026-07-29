import HautevilleHouse.CommutativeOrdersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure PartialOrderPackage where
  carrier : Type u
  le : carrier → carrier → Prop
  reflexive : ∀ a, le a a
  antisymmetric : ∀ a b, le a b ∧ le b a → a = b
  transitive : ∀ a b c, le a b → le b c → le a c

structure TotalOrderExtension (P : PartialOrderPackage) where
  extension_relation : P.carrier → P.carrier → Prop
  extends_partial : ∀ a b, P.le a b → extension_relation a b
  total : ∀ a b, extension_relation a b ∨ extension_relation b a
  transitive : ∀ a b c, extension_relation a b → extension_relation b c → extension_relation a c
  antisymmetric : ∀ a b, extension_relation a b ∧ extension_relation b a → a = b

structure CommutativeOrderPackage (P : PartialOrderPackage) (T : TotalOrderExtension P) where
  multiplication : P.carrier → P.carrier → P.carrier
  commutative : ∀ a b, multiplication a b = multiplication b a
  monotone : ∀ a b c d, T.extension_relation a b → T.extension_relation c d → T.extension_relation (multiplication a c) (multiplication b d)
  identity_element : P.carrier
  identity_left : ∀ a, multiplication identity_element a = a
  identity_right : ∀ a, multiplication a identity_element = a

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
