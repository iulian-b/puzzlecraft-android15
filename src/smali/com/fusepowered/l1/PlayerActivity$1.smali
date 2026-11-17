.class Lcom/fusepowered/l1/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/l1/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/PlayerActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 71
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "se"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 55
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 56
    .local v1, "x":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 57
    .local v2, "y":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    .line 58
    .local v3, "z":F
    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    iget-object v5, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v5}, Lcom/fusepowered/l1/PlayerActivity;->access$100(Lcom/fusepowered/l1/PlayerActivity;)F

    move-result v5

    invoke-static {v4, v5}, Lcom/fusepowered/l1/PlayerActivity;->access$002(Lcom/fusepowered/l1/PlayerActivity;F)F

    .line 59
    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v4, v5}, Lcom/fusepowered/l1/PlayerActivity;->access$102(Lcom/fusepowered/l1/PlayerActivity;F)F

    .line 60
    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v4}, Lcom/fusepowered/l1/PlayerActivity;->access$100(Lcom/fusepowered/l1/PlayerActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v5}, Lcom/fusepowered/l1/PlayerActivity;->access$000(Lcom/fusepowered/l1/PlayerActivity;)F

    move-result v5

    sub-float v0, v4, v5

    .line 61
    .local v0, "delta":F
    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    iget-object v5, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v5}, Lcom/fusepowered/l1/PlayerActivity;->access$200(Lcom/fusepowered/l1/PlayerActivity;)F

    move-result v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-static {v4, v5}, Lcom/fusepowered/l1/PlayerActivity;->access$202(Lcom/fusepowered/l1/PlayerActivity;F)F

    .line 63
    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v4}, Lcom/fusepowered/l1/PlayerActivity;->access$300(Lcom/fusepowered/l1/PlayerActivity;)Lcom/fusepowered/l1/AdView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/fusepowered/l1/PlayerActivity$1;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v4}, Lcom/fusepowered/l1/PlayerActivity;->access$300(Lcom/fusepowered/l1/PlayerActivity;)Lcom/fusepowered/l1/AdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/l1/AdView;->shake()V

    .line 68
    :cond_0
    return-void
.end method
