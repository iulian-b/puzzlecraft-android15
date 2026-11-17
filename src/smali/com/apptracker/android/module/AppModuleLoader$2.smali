.class Lcom/apptracker/android/module/AppModuleLoader$2;
.super Ljava/lang/Object;
.source "x"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleLoader;->G(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic h:Z

.field final synthetic m:Lcom/apptracker/android/module/AppModuleLoader;


# direct methods
.method constructor <init>(Lcom/apptracker/android/module/AppModuleLoader;Z)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p2, "arg1"    # Z

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleLoader$2;->m:Lcom/apptracker/android/module/AppModuleLoader;

    iput-boolean p2, p0, Lcom/apptracker/android/module/AppModuleLoader$2;->h:Z

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 914
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader$2;->m:Lcom/apptracker/android/module/AppModuleLoader;

    const-string v1, "connection timeout"

    iget-boolean v2, p0, Lcom/apptracker/android/module/AppModuleLoader$2;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/apptracker/android/module/AppModuleLoader;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 884
    return-void
.end method
