# ?? Enterprise Azure Zero-Trust Security & Identity Governance Engine

[![Zero Trust](https://img.shields.io/badge/Architecture-Zero_Trust-8A2BE2?style=for-the-badge&logo=shieldsdotio&logoColor=white)](https://github.com/gunjankumargaurav7350)
[![Azure Policy](https://img.shields.io/badge/Governance-Azure_Policy_Initiatives-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com)
[![Entra ID](https://img.shields.io/badge/Identity-Microsoft_Entra_PIM-00A2FF?style=for-the-badge&logo=microsoft&logoColor=white)](https://entra.microsoft.com)
[![Author](https://img.shields.io/badge/Architect-Gunjan_Kumar_Gaurav-0A0E27?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gunjan-gaurav)

Production-hardened **Zero-Trust Security & Governance Framework** for Microsoft Azure, automating **Privileged Identity Management (PIM)**, policy-as-code initiatives, key rotation, and compliance auditing.

---

## ? Zero-Trust Architecture Matrix

```
[ Identity Layer ]  -->  Microsoft Entra ID, Conditional Access (FIDO2 MFA), Just-in-Time PIM Elevation
         |
         v
[ Network Layer ]   -->  Private Endpoints, Hub-Spoke micro-segmentation, Zero Public IP exposure
         |
         v
[ Governance ]      -->  Azure Policy Initiatives enforcing CIS Benchmark & mandatory tagging
         |
         v
[ Data & Secrets ]  -->  Azure Key Vault HSM, Customer-Managed Keys (CMK), automated Event Grid rotation
```

---

## ??? Included Governance Modules

1. `entra-pim`: Timebound eligible role assignments with mandatory justification and manager approval.
2. `azure-policy-initiatives`: Custom Azure Policy initiative bundling CIS Microsoft Azure Foundations controls.
3. `conditional-access`: Infrastructure as code templates for zero-trust access baselines.
4. `key-vault-governance`: Automated secret and HSM key expiration and event-driven rotation.

---

## ?? Author & Inquiries

**Gunjan Kumar Gaurav**  
*Senior Cloud & DevSecOps Consultant | Azure Solutions Architect Expert (AZ-305)*  
LinkedIn: [linkedin.com/in/gunjan-gaurav](https://www.linkedin.com/in/gunjan-gaurav) | Email: `gunjankumargaurav7@gmail.com`
