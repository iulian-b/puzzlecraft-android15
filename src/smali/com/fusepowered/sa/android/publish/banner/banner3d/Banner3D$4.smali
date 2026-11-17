.class Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->onRestoreInstanceState(Landroid/os/Parcelable;)V
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

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$4;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$4;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$4;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$1300(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$1400(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;Ljava/util/List;)V

    return-void
.end method
