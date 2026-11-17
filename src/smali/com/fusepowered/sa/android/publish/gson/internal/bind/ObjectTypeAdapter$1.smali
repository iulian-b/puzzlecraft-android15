.class final Lcom/fusepowered/sa/android/publish/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/gson/internal/bind/ObjectTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/sa/android/publish/gson/Gson;",
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ObjectTypeAdapter;

    invoke-direct {v0, p1, v1}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/internal/bind/ObjectTypeAdapter$1;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
