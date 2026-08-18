{{/* Generate dynamic full name */}}
{{- define "application-chart.fullname" -}}
{{- default .Release.Name .Values.appName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Standard labels across all resources */}}
{{- define "application-chart.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ include "application-chart.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/* Selector labels for Deployment & Service matching */}}
{{- define "application-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "application-chart.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}