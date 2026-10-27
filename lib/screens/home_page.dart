import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------- PARTIE 3 : La barre supérieure ----------
      appBar: AppBar(
        title: const Text(
          'EMSI Connect',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              debugPrint('Notifications consultées');
            },
          ),
        ],
      ),

      // ---------- PARTIE 4 : Le contenu principal ----------
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // L'image du campus
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/EMSI.png', // Adapté à votre fichier
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),

              // Le titre
              const Text(
                'Bienvenue sur EMSI Connect',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),

              // La description
              const Text(
                'Votre espace universitaire pour acceder à vos cours, '
                'votre planning et vos informations personnelles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // ---------- PARTIE 5 : Les rubriques (grille 2x2) ----------
              Row(
                children: [
                  Expanded(
                    child: _buildRubrique(Icons.menu_book, 'Mes cours'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildRubrique(Icons.calendar_month, 'Planning'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _buildRubrique(Icons.person, 'Mon profil'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildRubrique(Icons.task_alt, 'Mes tâches'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ---------- PARTIE 6 : Le bouton flottant ----------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Fonctionnalité bientôt disponible');
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }

  // Fonction pour créer une rubrique (pour éviter de répéter le code)
  Widget _buildRubrique(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.green),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}