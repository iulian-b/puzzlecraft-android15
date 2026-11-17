.class abstract Lcom/fusepowered/m2/nativeads/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mCompletedCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mImageTaskManagerListener:Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mResults:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mSize:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fusepowered/m2/nativeads/TaskManager;, "Lcom/fusepowered/m2/nativeads/TaskManager<TT;>;"
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "imageTaskManagerListener":Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener;, "Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener<TT;>;"
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Urls list cannot be null"

    invoke-static {p1, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v0, "ImageTaskManagerListener cannot be null"

    invoke-static {p2, v0}, Lcom/fusepowered/m2/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Urls list cannot contain null"

    invoke-static {v0, v2}, Lcom/fusepowered/m2/common/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/nativeads/TaskManager;->mSize:I

    .line 38
    iput-object p2, p0, Lcom/fusepowered/m2/nativeads/TaskManager;->mImageTaskManagerListener:Lcom/fusepowered/m2/nativeads/TaskManager$TaskManagerListener;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/TaskManager;->mCompletedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/TaskManager;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/fusepowered/m2/nativeads/TaskManager;->mSize:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/nativeads/TaskManager;->mResults:Ljava/util/Map;

    .line 42
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method


# virtual methods
.method abstract execute()V
.end method
