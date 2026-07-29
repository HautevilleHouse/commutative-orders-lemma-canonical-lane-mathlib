import CommutativeOrdersLemmaCanonicalLaneLean.PartialOrderStructure

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure OrderTopology (O : CommutativeOrderStructure) where
  carrier : Type u
  topology : TopologicalSpace carrier
  opens : Set (Set carrier)
  orderRelation : carrier → carrier → Prop
  compatibility : ∀ a b, orderRelation a b ↔ a ∈ closure {b}

def OrderTopologyClosed (T : OrderTopology O) : Prop :=
  T.compatibility

structure ContinuousOrderHomomorphism (O1 O2 : CommutativeOrderStructure) (T1 : OrderTopology O1) (T2 : OrderTopology O2) where
  map : O1.carrier → O2.carrier
  continuous : Continuous map (α := T1.topology) (β := T2.topology)
  monotone : ∀ a b, T1.orderRelation a b → T2.orderRelation (map a) (map b)

def ContinuousOrderHomomorphismClosed (f : ContinuousOrderHomomorphism O1 O2 T1 T2) : Prop :=
  f.continuous ∧ f.monotone

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse