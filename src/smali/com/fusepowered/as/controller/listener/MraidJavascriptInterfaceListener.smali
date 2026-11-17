.class public interface abstract Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;
.super Ljava/lang/Object;
.source "MraidJavascriptInterfaceListener.java"


# static fields
.field public static final PROPERTIES_KEY:Ljava/lang/String; = "mraidJavascriptInterfaceListener"


# virtual methods
.method public abstract close()V
.end method

.method public abstract expand(Lorg/json/JSONObject;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract fireMraidEvent(Lcom/fusepowered/as/AerServEvent;)V
.end method

.method public abstract fireMraidEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/as/AerServEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentPosition()Landroid/graphics/Rect;
.end method

.method public abstract getMaxSize()Landroid/graphics/Point;
.end method

.method public abstract getPlacementType()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidPlacementType;
.end method

.method public abstract getScreenSize()Landroid/graphics/Point;
.end method

.method public abstract getState()Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;
.end method

.method public abstract onError(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;Ljava/lang/Exception;)V
.end method

.method public abstract onSizeChange()V
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public abstract playVideo(Ljava/lang/String;)V
.end method

.method public abstract resize(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract setAdView(Lcom/fusepowered/as/view/component/ASMraidWebView;)V
.end method

.method public abstract setOrientationProperties(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract useCustomClose(Z)V
.end method
