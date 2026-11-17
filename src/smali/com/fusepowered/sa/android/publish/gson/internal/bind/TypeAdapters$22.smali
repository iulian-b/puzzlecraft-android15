.class final Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters;
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
    .locals 2
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

    invoke-virtual {p2}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/fusepowered/sa/android/publish/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    move-result-object v1

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$22$1;

    invoke-direct {v0, p0, v1}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$22$1;-><init>(Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$22;Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;)V

    goto :goto_0
.end method
