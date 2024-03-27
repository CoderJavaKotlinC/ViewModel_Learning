// We will first create the ViewModel

//First, add the dependencies in build.gradle.kts (Module :app)

dependencies {
// other dependencies

    implementation("androidx.lifecycle:lifecycle-viewmodel-compose:2.6.1")
//...
}

// Create the data class for the UI state. 

data class GameUiState(
   val currentScrambledWord: String = ""
)

import kotlinx.coroutines.flow.StateFlow

// Game UI state

// Backing property to avoid state updates from other classes
private val _uiState = MutableStateFlow(GameUiState())
val uiState: StateFlow<GameUiState> 

A StateFlow can be exposed from the GameUiState so that the composables can listen for UI state updates and make the screen state survive configuration changes.


