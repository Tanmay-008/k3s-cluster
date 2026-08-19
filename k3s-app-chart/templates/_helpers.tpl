{{/*
Full name
*/}}
{{- define "k3s-apps.fullname" -}}
k3s-apps
{{- end }}


{{/*
Standard labels
*/}}
{{- define "k3s-apps.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- include "k3s-apps.selectorLabels" . }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "k3s-apps.selectorLabels" -}}
app.kubernetes.io/name: k3s-apps
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}