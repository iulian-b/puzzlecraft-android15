.class Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;
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

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$000(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$100(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$200(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$100(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$300(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DFace;->a(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$400(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$500(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->b()I

    move-result v2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$600(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$700(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->p()I

    move-result v0

    :goto_1
    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$800(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;F)V

    :cond_3
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$900(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)F

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$500(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->b()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$900(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)F

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$500(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$1000(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$500(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$1100(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$1002(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;Z)Z

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D$1;->this$0:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->access$500(Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;)Lcom/fusepowered/sa/android/publish/banner/BannerOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/BannerOptions;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3D;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
