import 'package:flutter/material.dart';
import 'package:task1/views/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SIGN Up",
        ),
        centerTitle: true,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBQVEhgSFBQYGBgYGBgYGBoYGBgbGhkaGhgaGhoYGhkbIC0kGx0pIBgYJTclKS4wNDQ0GiM5PzkyPi0yNDABCwsLEA8QGxISHTIjIykyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjQyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAIUBewMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBAUGBwj/xABEEAACAQIEAwUDCQcCBAcAAAABAgMAEQQSITEFQVEGEyJhcTJSkRRCYnKBkqGx0QcjM1PB0vAV4UNjgsIWNlRzhLLx/8QAGgEBAQEBAQEBAAAAAAAAAAAAAAECAwQGBf/EACURAQEAAgIBAwUAAwAAAAAAAAABAhEDEiEEEzEFFEFRcTJhwf/aAAwDAQACEQMRAD8A6Kiiiub54UUUUBRRRQFFFFAUUUUBRRRQFFFFAUUUUBSWpaKBKKLUUDaKW9JRBakpTSGgQ02n021AlbPDsHZc53O3kKysNHmdV6mumYWFceXLXh+t9L4Jllc7+Pj+q0tUMRiSu+oq5iHrGxsnKvO+lxxSNiQdQaYZawnxZR71ZbFXGhrWlyi1JIKpz4m1Qyz9azMVP51ZGKV8RedAPM+lWcbjDIwVdQNB9I9fSsfCIzyFuWw8+tbCxhdRa/8Anwr08XH+a+Z+t/VJjPZ475/N/wCHooRfM7msriWOCipMdjwoN65iWRpXsP8A8Fdssn4PofRZc2e7FnDxNK9ztz/Stk4BdFtpVDhQyOU62P8AQ/0romXS9eXLLdfa+m9LOLHUJwjAJnBttXUKvLyrE4eLa8q1kYk6C9csq9WtRIE3FNeDnTwpGptTi9ZSqoQingU8saQpVjN1Uiv+tL3lVy1vspO/8q1tnomooor1PkRRRRQFFFFAUUUUBRRRQFFFFAUUUooEopRSUBRRRQFNNONJQFNp1NoA0hpaDRDaDSkUhoNDg0N3zclH4n/DWvIag4XFljBO7a/p+FOnevLyXdfU/TuHpxSfm+VHFvWHi351qYqS9YmMaucfqzwxeJvbUVUw2MN7dKk4mfCaxVnyk10kYt02ZMXVUAyNYbc60OzXBWxV5HzJGpsLaFzzAvyH9a6fG8FjjQmOPUDZNGP9x9b11wxm/Lwes5culx4v8mBBEFWquNxeUHWuiw3BZJFDSeAdN2t5jYVIezeH+erP9ZiPwW1dc+XGeI+V4fovqeTO5ZzX9eZ8RnLG3M7eX+1WuE4bTQFjzsCfyr0dOE4ZPEkKAjnkBb4nWpWmAFhYfZXDLk2+m9H6OcGOvmuAh4ViGnRlifKD4iRlFrfSt5V18fCmI8RA9Nau9/TGlJ51zuT3eU8WGRABvVgOOVUO8NKs1Q6rkj6VQkcg1OZL1WxBqmifKD1pO+vVJyRrTe9qs3Fdaamd5VTPejP50NOi+Tv0o7l+lb/cnofhSdyfdPwr1PmvtowO7bpR3Z6Vv9wfdPwpO4Pun4U0z9tGBkPSkynpW/8AJvon4GmnC/RPwNNM/bf7YVqSts4T6J+FNOC+ifhTSfb1jUVsHAfRPwNNPDvon4Gifb5MmitQ8O+ifgab/pp6H4GjPsZM2ltWgeGt0PwNNPDm6H4Gie1l+lI02rrYB/dPwNMOBk90/A0ZvHn+lWipzhJPcb4Gg4WT3G+BonTL9K5pLVP8nf3G+6aacO/uN900Ot/SGipTA/uN900dw/uN900Z1UVJUvcP7jfdNHcv7jfdP6UNVGTSwx5nVepA/WnGB/cb7pq7wnDMZLlWGUHcHc6frWcrqOvBx3Pkxl/Nar6C1UcTKKvyoeh+BrLxKt7rfA15LH2XFrTJxU4vWTi5b1dx+GkNyEe/1W/SseSKS38N7/Ub9K1I77jN4k+9R9neHNNJ3YTTdn90efn0qWTh08jrGkT3Y21RgB5k20FejcF4R8njEaqc27tlPibr6dK3PHy8/Ll+J8rWFwqRosaiwUWAqYRczUkcRHI39DTyh6H4Gplla8+GEl3flXlWqWIXStF4z0PwNUpomNxlb4GsaejGsLEkg3qFjfUVexGFcn2G+6arJhpBcZG+6asaukaNTWqdcM/uP900fJX9xvun9KaTsivSpT/ksnuP900DDSe4/wB0/pV0zsuao3NSnDv/AC2+6f0ppw8n8t/un9KaTwqSLVcpV9sNJ/Lf7rfpUZwkn8t/ut+lTVa3IqhKXu6tDCyfy3+636U35NJ/Lf7rfpV8pt6Rai1Oor2vxtG0UtFqGiUUtqS1FFqS1Lai1GdEtRaltRQ0bai1OoqGjbUuU9KixeGWWN43BKurI1iVNmFjZhqD5ivL8L2fgbjkuCPedwkGdU76a4bLCb5s+Y6u2l+dFmL1QiktXnXbDh54XCmNweImQrIqtDJKzxyKQSRlcnXT4XtY616IzgLmbwgDMcxsFAFzcna1EsFqMtYA7aYAkfv7IWyCQxyiEt074pk5b3tW7POkaM7sqoqlmZiAoUC5JJ0AoaLkFNZBWJhO2eBkDFZ7BVd7skiBlQFpChdRnyhSSFudNqrcW47gMTg5FbEMIpAY2dI5bi65r/w9rDmLbiqnV0QRSLjUHYjY0GEVj9lEwsPD07mbPh0EjCV/CLB3Lk3AyKrZhtoB9tCdrsGRmEj5Nf3hgnEWnPvTHkt9K9vOh0jXMApvyeuX/aF2lXD4R0iYtLMpVCl7Irj+IXGi6Xy63JII0BI2eG9oMNKVjjkZmyXsY5V0VbnVkA/Gontz9Lpw9T4RLX+ysTDdrsE5ZVmN0QOwaKZDlLKgsHQFyWdAFW5JYWFWeE9o8JPE88cy5I/bZgyZLC92DgEC3Pas5Tw3xYSZSteSqExrPftXhM6o0joXOVGkhmjRz0V3QKfjRxniEcEbSSE2HIAlmNr5VUbnSuen6WGtHSmqAiZ3CruTbU2Fc52a7TxvEWmkId5ZGICSOFUt4VBRCCAth9lafanC8PknginxMkUkEgsFR7O75GAz5CubRLMp0uR6a1q6S8k1uOuwOCSMdWO5/oByFW8/lVfH46KGNpZZFRF9pnNgOg8yem5rIwfa3ByusYkKs/8AD7yOSMPt7DOqhjqNAb61JLWbY6Imi9YvGO0uFwhy4iRkuobSOVxYkgXZEIGqnQmoOIdr8FA+WSaxBAOVHdULAEB2RSFNiDYm9TVNxvtUEhoTEK6q6MGVgGVlIIZSLggjcEVG7VFiCQ1DzqRqYxqtAUt6jZ+dRvOo3IHqbVdMp70XqscWnvD405ZQdjf0oJyaQmmh6UGigmlCdaVQBRv6UQ00vd0+1qbeiN6ipsgpMg6V2eLqipKnyjpRl8qL1QUVYy+VJl8qHVBRU+Xyoy+VTR1V6KnsOlFvKmk6oKLVYt5UlvKmjqr2rzDEYF5u0c6JPJAe4Vs8WXNYJAMviBFjcH7BXqOLWQxuIiokynIXBKB7eEsBqVva9q4WPspxNcc/EBiMJ3zpkYGOXJlsg0XNcHwLz61VkZAwHccaggxrvi0kGbDSTOx7pxfTu82Q+JAPZ3ZTuKvftZ4wBgngjk8XfRxz2vdFeN5VB+tkU+lxzrc7bdlpcYMPNDIiYjDOHRmzBG1ViCQCRZkVhodiOd6ig7HNNh8UmPkRpsW6u7QghYzGqrGEzanLbmNQbHqRo3E4LGvhGwfyPCCJozEFGJksq5cqkfuNxoQeovXL9qMHiIOE4LA4iRTnxKROyMSpjBdkUMVHsjLy+YK6bDcK40iDCjF4Xu1UIuIMchxAUCwOQnIWAtqSdtSTrVnj3ZXCf6V8idxFFEoZZnIujgm8jE2BLFnzbXzkC1xQ0XtxgIjwvER5AqxQsyACwQxrdAtthpl9CRzqjwn/AMvf/Cl/+klUuNrjZeEyviMRhmhWBmWTDly2IKj93nZrKgLBSwW+Yi2guDocGwOJl4Jh4YTEneYYo5lDnwSIbFcpFms19bih1ZnZ3hXyrs4uH7wR51l8Z9lSmKkcZj7pK2PkTVXivEMUmEOE4lgnOHyKhxODdSAqFSr5CCFXwi5bKD7uoFbOD7Gznhr8Lnli7rKcjxq+cP33fAsHOVlzaWFjbnzqZeD8SGEGAQ4NIxF3PeAzu/dlcpIiYWzWJ3cihpidvliHAIxh2LQgQCNje5QAgE3A16iw1voK7w4tEMMbtZ5fCgsxzMqF2FwLCyqx1ttWPxPsaknCxw1ZCoRVyORfxq2YsyjkxLXA2zeVJwzhOPeaKXGSYc/JlcQrAJPG7pk7yUvbZCwyqLXYnpQ6sWOEN2lkzC+XCZh62Rfyc1f4r2TwUOAmhD/JYmZZHkzlrMrKUBzsbi4ACg7nTWmR9nuIrj24h3uE7x4u5K5J8gW6G4GbNfwDnzNafbfs+2OwncLIEYMrqTfKSqspVhvl8R62IBsalXGefDhe2vETLwlUijkeCPuh8pxAKvKQAqtGrDM176uwUWuBe+nY4nFL3aoXGdoiwF/EwCjM1udiy/EVm8Y7PYvGQNHjZ4kaw7tMMr92HB0dy5zPpcZdAAxOpAITg/DMU06Pimido4jCqxB8pVihZ3ZreI5F0AA3rHivVjvHdQ/svmSHhRxEjWVDKzNYnKim5NlBJ25U79prXXAkbHGRkehBIqPBdk8bFC/Dkng+SSFgXKv8oCP7aKPYuQPaN9ybbAaXa3s9isW8eSTDpHDIksYKyZ7qoGVyDYi+ba2lqXxductsUO2o7zinDsNJrEXeQqfZZ1uRcc/YA9HI51oftIwyScNmLjVMjoeasHUaHlcFl9GNP43wGTFRRPJIkeKgcvHLErFFOa4Uq5uVIVL67r0uDR4nwjHY1FgxcmHSEMrSDDiQvLlNwLuAEFwDpfUDpSWeG9Xz4+VDtTjHl7OpI5u7x4VmJ+c2dLsfXf7a2cbg0TgjxqPCMG7er90XLnqxe7X661H2n4HNiYfkkLQpDlQeJXzqUe4C5TlC2VBYi+9S4zBY1sG2FL4bMyNEWCy27sxhAR4v4l8xvttpRdXd/hewTn/TMPc7K4+wSOAPsAArbd65/szgZ8NCuHkeJkRSEKBw9y5Y5sxtbxHYVo4nFqgux/WpZ5WfEWXes6fiAVstr+nI9KzMVxN3Nl8K/ift5VDHVmJ2XMTimfTYdBVKUaVNamS7VQqezT8O5FMQaU+Og0cPL0NXE13JrIU21q3BMDzqWLtpqBSs1VVepA9TSVJelvUWeluaiOozUuao1bnS12eU/NSZqSigXNS5qbRainZqbnopDRAz21pQ4ptqj9n0/Kgmz0Z6bRQOz0Z6bRQOz0XptFBG0uXe9uv61S4/wuPF4Z8PJmyOBfKQGBVg6sp2uGUHXTTWtAjrUBQr7Oo6cx6fpQclD2Mz4dMHLi2bCxkHuY4ljZ7Nn/eyBmLXa7HLluTfe1uxChQAosAAAosAABYADlTLK/iU2PXmPIihZbGz6dDyP6GptNnrIG6g/jQZrbg+vKh4wfI9RTDIRo+3Xl9vSqqbvBTS4qLIRqu3Tl9nShHB02PMHegcZB51BicWqjW+vpy/wVIwrN4nExsVBNulcuS2Tw6+nmNzky+FLHcXRQTZvgP1q9wx4ygZWOZhexFi3odjWCuDaWQR20Ptelb2MsbYVCFVFDzOQLIg2AvoHaxt0AJ6Vni3fNen1VxmscWQ3GwXZmR0UAhcwAzG41GutT4DtEkgbwuMlrsQuXXbW+9c3Ni0xYJjLiNJHEbMAQ683AvexN9dLkGnIrSsMPCtgOv4u/8Anl0rplNvPhnqa06aTiydD+H61C/F4xuG+wD9agk7OZIwI3JYb5jufLkPSufxUDi4a4rz3tK9vHcMp4dA/aGMcm+C/rVZ+0cfuv8ABf6msLCRgix3vrWgmEUir2umumO0k3HxbRHA8gv91Z8/Go7G6ufsX+6ruIwQWMG2mx/GxrExUGhqTkrc4sbETdpIuccn3U/vp0faKP8AlyfBP76ykwwN/U0jYYr5it96z9vG+vaGP+XJ8E/uqOftFGLfu5d/dT+6sdEJ2tVrDYUuSul6ner7OOmgO0cXuSfdT+6iPtLF7knwT+6sKbDFWtbnTRDY1e9c7xSOm/8AEUXuP8F/uprdo4h8x/gv91YaJTRh71O9PbjoY+1sY0KSfBf7quR9q4DyceoUf91ci2EvTThzTue3HcL2iiOwf7Av91O/1+P3ZPgv91cWmG6XHpU3cv7x/Cnap7ce0ucmvzefl5+lOlzZTlIDW0JFxflcdKeRUELZW7s9Loeq8x6rcD0I869L83Thcf28xOHkaKbCpmU62dhccmFwbg0xf2odcKfsk/Va2e33Z04mHvIx+9jBIA3dN2T15jz05144WNHO3KXT0wftRj/9K/31/St/sx2yixrtGFMbjUKxBzLzKkcx0rxNlNs1tNr20v0vUmHneN1dGKOhDKRoQdwaLMq+jqK53sd2mTGxa2WVAO8T/vX6J/A6V0VHQUGiigh9n6v5f7VJenVXYZNRqvMdPMeXlRHG9re0uOwT37qJomPgez7+6wvo351zUf7TMXnBaOIrfxKFYEjoGLG3wr1bFYWOWNo5FDo4sQdQQf8AN68Z7Z9knwT94l3gY+FuaE/Mf+h5+tGLuPW+A8bhxcYkib66n2kPRh/XnWnavnXhPFpcNKJYXysNxurD3WHMV7X2U7UxY2Pw+CRR44ydR9JfeXz+NGpdt6inWoouleSG5zKcrdevkRzpiygnu5BZjyPst9U8/Tepy69R8RSTRK65WFx/moPI+dDSIoyez4l93mPqk7+hqSORXFwb8j1B6Ecj5VUaZov4hLJ/M5p9cdPpj7bb1NNh8x7yNsr20YahhyDD5w/HoaBxiK6p907fYeVMur6G4Ycjoy+Y8vMaUQYu7ZHGR+QvcOBuUb5w8txzFPxEAe17gjZhoy+h/psaggd2T2/EvvAaj6w/qKdmBFwQQeY2qJsQYzaW1thINFPk/uH8D1G1NaJFceMIGuWUkBTYXJAOx56b86yHPIVXOq5nY5I12uepPJQLknkAa4fjeNE2bCo5+ThicTKNGxMvzo1PKMWAJ8go2rW7RcSLlokYpdcsjj2o49D3S8xI+hc/NGUb6iThvAowi50GQABUIFrAaXHIeVXempGdw3hUkoB/hRC1gFF2A2C62C/Ztp6dHgMAkQIXUsbsx3Pl6VbtSVnbQJrJ4jAN7XBrTNRSaixGlYznaOnHlcbtyWJwgU5l0NPw8vLnWjjsNbUaj8RWLKBXHzPFfoY6ym41gQ0bJ6/EaiubxR0NaMONKb+Ifj/vVKCMNvUjWHjbJTDsBfSrkcQZdRY1pjCippcIqxBtiG/O9Wunf4cw0eVrVewJAf7Kg4jpY351QTE+K2YXtoBpV+Wc9edtHjBGc28vyqgo1qu6TFsxS45ZSDTllK+0jD1U1dVymUrQRKeoFU0xi9RUyTistybW1SlaIVEsg61Okoptepqx2qbMKjZhTc1NnV7HUOKhzLobMDmQ9GH9DcgjoTU9qSva/FRYabOt7WIJDLzVhuP9+YIPOvLP2jdm+6kOLjX927eMAaI55/Vb879RXps47t+9HskASDyGz/8ATsfL6oFS4vCpJG0cihkdSrA7EGjNm3i/ZniYF4JLsSR3eZ3yje6Zc1tdLWG9+otLx3CrMe8iBzKNbqyBlAudWULcfWOlZnaXgkmCxBjNyt80b+8l9DcfOGx8x6VPwlTOrK8r+E5yGKuDfTOFdTc8jqaMs3hXEpMPMk0TWdT9jDmrDmpr3Xs9xqLGQLNGfJ15q/NT/Q8xXh/EOHgXaOQSAAs+UKCgv7RVCQF2F9NxU3Zjj8mCnEq3ZDZZEvo6f3DcH+hNFxunv1FV+H41Jo0ljYMji6kfkRyINwRyIqjxaadCDGM4YgAGwCn6WlyDtuL6CjbWoqDCYkSKGFx1BBBB+3cdDsRqKnoKj3jOYapuwG69WA6dR9o50+eGOWMo6q6OtiDYqyn86nqk/wC6JYfwzqw9w83A9w8xy32vYjyDtl2SbBSd6gL4Zm0JvdCT7Dka25BufrvHw3AIFWbCyukqkMpcgMm9lZRplbrrcdRpXtc0SSIUdQ6MLEEAqwPIjmK8i7VdnJuHuZ8MzHDsdRckIToEkXZl18LHy2NiTNmnd9le1a4g9xMBHiVvddlkAuM8ZO40OldRXiTyriow8dldLNmuqyRsNAc4IGS53AF9NAa7Xsj2xLlcLjPBMdEk0yTDbRh4c/LTQnz0osrqeI4ASKbWD2sGtr6fG1RJjTGwjl0JvZyyagC5Nr7ctr/nWnVfFYVJFyutxy8j1HnRU9ZkmGeK7wjMm7Q3A9TETop+gfCfo6k04WlwzZHu8WykAAi5NhY7t11seVtq3UcMLg3FFVEeLER6eJb6jVXRxyI0aNx9hFV3xLwfxiXi5S21TylA5f8AMGnvAWuZMbw4s/exN3coFs1ro4GySJ89eh0ZeR3BMDxEO3dSL3cwBJRjfMAbF42+emo1GouMwU6URbazDkQR6gg/mKweJ4bwGGIMdcxUHRFHzFv7NyNBcW8hpVuTByQkvhxmTd4LgDzaEnSNvonwH6JJY2sHi45VLRnY2dSCro1vZdTqrWtoeVuVYsalYvCeHRmMhZHcg2zexIjb2Zdw99Tm3vzB1ufKGi0mtl5SgWX/AKx/wz5+z6XtVjG4HOe8jOSQCwkABuBssi7SJ5HUXNiDrUOHxzZxDMoSQ3y63SSwuTGx3Nr3Q+Ia7jUl2t2qhLjDGxEihUv4XuSh8nNv3Z9dNtb6U18HJF4oACnOEmy+Zib/AIZ+ifAfo3LVYwuISUNlvdTldGFnQ+66HUafYRqCQb1LFlUpOMIr92V8Xu3FyOq30b0vfpfSrSTo65lNxt5g8wQdQfI61UxnCW8JiC2X/hkAKR9BrHuyPQjlYbihNKofOkchlUWdCyLIo1tmW9pF3swJXQ2NTTUrUljB2rBxKKzlchDi+hspI95dbMPMXrRXGMi5phlW2sgFlH/uLcmPnrdl09obVZnwiypZgrqbEbEdQwP5EVm4u2OevhyGKRo9cj29AbfdN/wqouKv4gpt7y3P5V1rYSWP2DnT3Tl7wejkWb0ax+lVN4VkfOrOkqjmI1a3R0P8RPw6Eb1n246zmrHi4iuxNz8D8DV3E4uMwkZgDpodOdSYnC5yDMvdMDq4GaJx1Iv+7P1vS7VbfgUB17tfs2qXjdPexuvDgserztaNwAm/mfMbgVHFhAvhmGXoT7BPk/I+tjXeYjgMbWsCrD2WXRl9D08joedU2wpj8MwzJr+8VfDb/mJrl+sLroScu1bk1HPPk7XdYscUkfs+NehIDj0bZvtt61cw0yvtuN1Isw9VOoq7/oxQB8OylTr3bEmNhbTIwuY+W118udCYaKVsjKySqCQreGQDS5RgbOu2qkjkelNM9orthEb2kU+oFRtwWI/MA9Lj8q0RFJH/ABFLp76L4x9dBv6p90VdhjV1DoQynYg3B+0U0vdzcvCIkteQpfQXca+mbelPAza4lNt9QDW7xHhxkjKBUY7gPfKSPNdQfOqnDIQloQcjAaRuGJIG5RjIQ48wT52qdYe7l+2LDgmckRzxvbe3L4GhuGzjofQN+lbGI4UUlMzRq496NAJE6nKb5xv7OvkatKysLrOpHm0QOmhBDLcWOmvSnSL72T0dhSUUV6H55pFVsDpnTlGxVfq2VgPszW+wUUUGP214RHiMHJn0aINIjAaqVGo9CBYj9K8RweKaNxKtrocwBFweoPkRcfbRRRzy+XoEPCXl7sNKuWYA5WWR8oIuAS8pzWvvptXAY2ELK6DYHT4X/rRRRa6/9mXG5I8UMJ7Uc2Y2J9hgpOZfW1iOenSvX5o1ZSGAIIsQdjSUUax+GGE7gySJbwWzCx8eax8Rve4BsD/TSt80UUUlFFFBRj/dyCNfYYOwHuZbEhfom+3LlpYC28IYZGAIYG4IuCDoQQdxRRQeO9sOEjAYpBhnyrLdgGRGyeIKVDMCSvl+e9JjcGkws2lrjw2sCPdLAsB5Fj6miijDpf2ZdpZsR3mFm8ZiQMshPjK5suVveP0t+t969Aooo1Pg2aFWUqwuCLEHYjoeo8q5vik3yIho7lWDnISLDIL2vYk/0ooorpENwD5A1Xx+ASVcrg+EkqynKyMD7SMNVbU6jqRsbUUUFHg2NdpJsPIQzQFB3gAUyB1zAso0DAaEjQnUBdqmx/DQ7CWNu7mA0cC4YA6JItx3ib6XBFzlKnWiigXgmM+UYeOcrlLgkgG9rE7fCpcdho3jKyIGUjMQeoOhB3BB1BGoNFFFZuBnePEfJWYuO7EqO3tqpfLkcj27cm0NrXubsbmL4cslpASki6LIlgwHunk6/RYEc9wCCis0V+DY9poyXADJLJCSuisYzlLhTcqDvlubdTVnGYRZEysWFza6sVYeYYaj/L3ooqKxMOxDTwNZnhAIfxAMGUsuZA3tACxIIBOoC7Vk8M4zI8Us6+EwpmdCzPHIBqQFY3jbQ2Ktz1DWooqtT4ddhyHRXtbMAbb2uAbX571ldo3aOIMMpUlVZSHB8XMOrgqf80ooqKy42y9yLBlmbIM1y66MdXBGcaAC4v1Jq3PGVt3ZykbDVk9ChO31Sp86KKNIkxbNCcQNACQUOoOUkXDCxF7c71pYezqDa1/tooqUcwJXTG/J1KqWGbMqkISS38SMsQx2uylGJG9tK2MEExUAZ4xa50vexUlcysLFTpcEajrRRSivPM+HmhhLGVZ3yKW0ePQnVx/EFgALgHqTV+Xhali8bGOTmygWa4v41OjbAX3tsRRRQM4Pie+DhlAMchjJGzFdMwHzQelz61axGDjdbOoYe1Y8iNiDyI5EaiiilFCV2geJCxkSWTu1z+2hsWvn+eNLWIv1Y1pnBRNq0aEnclRc/hRRVR//2Q==",
              //height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Sign UP",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              // height: 150,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'UserName',
                  hintText: 'Name',
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: const Icon(Icons.account_circle_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              // height: 150,
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'password',
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: const Icon(Icons.password_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Password',
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: const Icon(Icons.password_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  //  padding: const EdgeInsets.all(20),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
