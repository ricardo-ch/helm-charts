{{- define "gke-ingress.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gke-ingress.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "gke-ingress.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "gke-ingress.labels" -}}
helm.sh/chart: {{ include "gke-ingress.chart" . }}
{{ include "gke-ingress.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: {{ include "gke-ingress.name" . }}
{{- range $key, $val := .Values.service.labels }}
{{- if not (or (eq $key "app") (eq $key "istio")) }}
{{ $key | quote }}: {{ $val | quote }}
{{- end }}
{{- end }}
{{- end }}

{{- define "gke-ingress.selectorLabels" -}}
{{- if hasKey .Values.service.labels "app" }}
{{- with .Values.service.labels.app }}app: {{.|quote}}
{{- end}}
{{- else }}app: {{ include "gke-ingress.name" . }}
{{- end }}
{{- if hasKey .Values.service.labels "istio" }}
{{- with .Values.service.labels.istio }}
istio: {{.|quote}}
{{- end}}
{{- else }}
istio: {{ include "gke-ingress.name" . | trimPrefix "istio-" }}
{{- end }}
{{- end }}