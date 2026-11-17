.class public Lcom/fusepowered/sa/android/publish/list3d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/list3d/a$b;,
        Lcom/fusepowered/sa/android/publish/list3d/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/fusepowered/sa/android/publish/list3d/f;

.field e:I

.field f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/fusepowered/sa/android/publish/list3d/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->e:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->e:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/fusepowered/sa/android/publish/list3d/a$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/fusepowered/sa/android/publish/list3d/a$b;-><init>(Lcom/fusepowered/sa/android/publish/list3d/a;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->e:I

    new-instance v0, Lcom/fusepowered/sa/android/publish/list3d/a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fusepowered/sa/android/publish/list3d/a$a;-><init>(Lcom/fusepowered/sa/android/publish/list3d/a;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/list3d/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->e:I

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p3}, Lcom/fusepowered/sa/android/publish/f/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/fusepowered/sa/android/publish/list3d/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->d:Lcom/fusepowered/sa/android/publish/list3d/f;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/list3d/a;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/list3d/a$b;

    new-instance v1, Lcom/fusepowered/sa/android/publish/list3d/a$a;

    iget v2, v0, Lcom/fusepowered/sa/android/publish/list3d/a$b;->a:I

    iget-object v3, v0, Lcom/fusepowered/sa/android/publish/list3d/a$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/fusepowered/sa/android/publish/list3d/a$b;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/fusepowered/sa/android/publish/list3d/a$a;-><init>(Lcom/fusepowered/sa/android/publish/list3d/a;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/fusepowered/sa/android/publish/list3d/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
