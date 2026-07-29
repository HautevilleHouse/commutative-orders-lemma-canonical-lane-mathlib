import CommutativeOrdersLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure PartialOrderStructure where
  carrier : Type u
  relation : carrier → carrier → Prop
  reflexive : ∀ a, relation a a
  antisymmetric : ∀ a b, relation a b → relation b a → a = b
  transitive : ∀ a b c, relation a b → relation b c → relation a c

structure CommutativeOrderStructure extends PartialOrderStructure where
  commutative : ∀ a b, relation a b → relation b a

structure OrderWitness (O : CommutativeOrderStructure) where
  witnessed : ∀ a b, O.relation a b

def OrderWitnessClosed (O : CommutativeOrderStructure) : Prop :=
  ∀ a b, O.relation a b

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse