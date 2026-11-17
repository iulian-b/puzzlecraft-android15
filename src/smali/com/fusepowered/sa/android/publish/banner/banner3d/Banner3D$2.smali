.class Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->initRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$1200(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->load()V

    :cond_0
    return-void
.end method
