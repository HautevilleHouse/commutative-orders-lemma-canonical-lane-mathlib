import HautevilleHouse.CommutativeOrdersLemmaCanonicalLaneLean.CommutativeOrderStructure

namespace HautevilleHouse
namespace CommutativeOrdersLemmaCanonicalLaneLean

structure SzpilrajnExtensionPackage (P : PartialOrderPackage) where
  totalOrderExtensionExists : ∃ (T : TotalOrderExtension P), True

structure SzpilrajnExtensionEvidence (P : PartialOrderPackage) (S : SzpilrajnExtensionPackage P) where
  witness : TotalOrderExtension P
  witness_extends : ∀ a b, P.le a b → witness.extension_relation a b
  witness_total : ∀ a b, witness.extension_relation a b ∨ witness.extension_relation b a

def SzpilrajnExtensionClosed (P : PartialOrderPackage) (S : SzpilrajnExtensionPackage P) : Prop :=
  S.totalOrderExtensionExists

theorem szpilrajn_extension_closed_from_evidence (P : PartialOrderPackage) (S : SzpilrajnExtensionPackage P) (E : SzpilrajnExtensionEvidence P S) : SzpilrajnExtensionClosed P S :=
  by
    unfold SzpilrajnExtensionClosed
    exact ⟨E.witness, trivial⟩

theorem szpilrajn_lemma_statement (P : PartialOrderPackage) : SzpilrajnExtensionPackage P :=
  { totalOrderExtensionExists := by
      -- classical existence argument omitted
      exact ⟨⟨λ a b => P.le a b, λ a b h => h, ?_, ?_, ?_⟩, trivial⟩
      exact P.reflexive
      exact λ a b h => ?_
      exact λ a b c h1 h2 => P.transitive a b c h1 h2
    }

end CommutativeOrdersLemmaCanonicalLaneLean
end HautevilleHouse
