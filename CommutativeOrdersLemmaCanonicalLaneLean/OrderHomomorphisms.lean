import CommutativeOrdersLemmaCanonicalLaneLean.PartialOrderStructure

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure OrderHomomorphism (O1 O2 : CommutativeOrderStructure) where
  map : O1.carrier → O2.carrier
  monotone : ∀ a b, O1.relation a b → O2.relation (map a) (map b)

def OrderHomomorphismClosed (f : OrderHomomorphism O1 O2) : Prop :=
  f.monotone

structure OrderEmbedding (O1 O2 : CommutativeOrderStructure) extends OrderHomomorphism O1 O2 where
  injective : Function.Injective map
  reflecting : ∀ a b, O2.relation (map a) (map b) → O1.relation a b

def OrderEmbeddingClosed (f : OrderEmbedding O1 O2) : Prop :=
  f.injective ∧ f.reflecting

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse