
from django.shortcuts import render, redirect, get_object_or_404
from django.views.decorators.http import require_POST
from .models import Task


def home(request):
    tasks = Task.objects.all()
    return render(request, "index.html", {"tasks": tasks})


@require_POST
def add_task(request):
    title = request.POST.get("title", "").strip()
    description = request.POST.get("description", "").strip()

    if title and len(title) <= 200:
        Task.objects.create(
            title=title,
            description=description
        )

    return redirect("home")


@require_POST
def toggle_task(request, task_id):
    task = get_object_or_404(Task, id=task_id)
    task.is_completed = not task.is_completed
    task.save(update_fields=["is_completed"])
    return redirect("home")


@require_POST
def delete_task(request, task_id):
    task = get_object_or_404(Task, id=task_id)
    task.delete()
    return redirect("home")
from django.http import JsonResponse

def healthz(request):
    return JsonResponse({"status": "ok"})
