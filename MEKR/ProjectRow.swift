
import SwiftUI

struct ProjectRow: View {
    var project: Project
    
    var body: some View {
        HStack() {
            project.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(project.name)
            
            Spacer()
        }
    }
}

struct ProjectRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProjectRow(project: projectData[0])
            ProjectRow(project: projectData[1])
        }
        .previewLayout(.fixed(width: 300, height: 50))

    }
}
