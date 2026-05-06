# Task Manager - Full Stack Application

A modern, responsive task management application built with React frontend and Node.js/Express backend. Features a beautiful UI with gradient design and smooth animations.

## 🚀 Features

- ✅ **Modern UI/UX**: Beautiful gradient design with smooth animations
- 📱 **Responsive Design**: Works perfectly on desktop and mobile devices
- 🔄 **Real-time Updates**: Instant task management with RESTful API
- 🎯 **Task Filtering**: Filter tasks by All, Pending, and Completed
- 🗑️ **Easy Deletion**: Hover to reveal delete buttons
- 🌐 **Full Stack**: React frontend with Node.js/Express backend
- 🐳 **Docker Ready**: Containerized deployment with multi-stage build
- 🚀 **CI/CD**: Automated deployment to EC2 via GitHub Actions

## 🛠️ Tech Stack

### Frontend
- **React 18** - Modern React with hooks
- **CSS3** - Custom styling with animations
- **Responsive Design** - Mobile-first approach

### Backend
- **Node.js** - JavaScript runtime
- **Express.js** - Web framework
- **RESTful API** - Clean API design
- **CORS** - Cross-origin resource sharing

### DevOps
- **Docker** - Containerization
- **GitHub Actions** - CI/CD pipelines
- **EC2** - Cloud deployment

## 📦 Installation

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- Docker (for containerized deployment)

### Local Development

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd node-app
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start development server**
   ```bash
   npm run dev
   ```

4. **Open your browser**
   ```
   http://localhost:3000
   ```

### Docker Deployment

1. **Build the Docker image**
   ```bash
   docker build -t task-manager .
   ```

2. **Run the container**
   ```bash
   docker run -p 3000:3000 task-manager
   ```

## 🔧 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/tasks` | Get all tasks |
| POST | `/api/tasks` | Create a new task |
| PUT | `/api/tasks/:id` | Update a task |
| DELETE | `/api/tasks/:id` | Delete a task |
| GET | `/api/health` | Health check |

## 📱 Usage

1. **Add Tasks**: Type in the input field and click "Add Task"
2. **Complete Tasks**: Click the checkbox to mark tasks as complete
3. **Filter Tasks**: Use the filter buttons to view All, Pending, or Completed tasks
4. **Delete Tasks**: Hover over a task and click the × button to delete

## 🚀 Deployment

The application is configured for automated deployment to EC2 using GitHub Actions:

- **CI Pipeline** (`ci.yml`): Builds and pushes Docker image to Docker Hub
- **CD Pipeline** (`cd.yml`): Deploys to EC2 instance via SSH

### Environment Variables Required

For GitHub Actions deployment:
- `DOCKER_USERNAME` - Docker Hub username
- `DOCKER_PASSWORD` - Docker Hub password/token
- `EC2_HOST` - EC2 instance IP address
- `EC2_USERNAME` - EC2 SSH username (usually `ec2-user` or `ubuntu`)
- `EC2_KEY` - Private SSH key for EC2 access

## 🎨 UI/UX Design

- **Color Scheme**: Modern gradient from blue to purple
- **Typography**: Inter font family for clean readability
- **Animations**: Smooth transitions and hover effects
- **Accessibility**: Proper contrast ratios and keyboard navigation
- **Mobile Responsive**: Optimized for all screen sizes

## 📂 Project Structure

```
node-app/
├── client/                 # React frontend
│   ├── public/
│   │   ├── index.html
│   │   └── manifest.json
│   └── src/
│       ├── App.js         # Main React component
│       ├── App.css        # Styling
│       ├── index.js       # React entry point
│       └── index.css      # Global styles
├── .github/workflows/     # GitHub Actions
│   ├── ci.yml            # Build pipeline
│   └── cd.yml            # Deploy pipeline
├── Dockerfile            # Multi-stage Docker build
├── index.js             # Express server
├── package.json         # Server dependencies
└── README.md           # This file
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the ISC License.

## 👨‍💻 Author

Built with ❤️ for modern web development practices.

---

**Happy Task Managing! 🎯**