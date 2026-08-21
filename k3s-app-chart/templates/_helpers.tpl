{{/*
Full name
*/}}
{{- define "k3s-apps.fullname" -}}
{{ .Values.appName | default .Release.Name }}
{{- end }}


{{/*
Standard labels
*/}}
{{- define "k3s-apps.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{ include "k3s-apps.selectorLabels" . }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "k3s-apps.selectorLabels" -}}
app.kubernetes.io/name: {{ .Values.appName | default .Release.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}